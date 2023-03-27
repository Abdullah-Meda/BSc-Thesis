
function cwt = helperMakeCWT(fb, normalizedSignal, imgSize)
    % Compute the continuous wavelet transform of the normalized signal
    cfs = abs(fb.wt(normalizedSignal));

    % Convert the wavelet coefficients to an RGB image
    im = ind2rgb(im2uint8(rescale(cfs)),jet(128));
    
    % Resize the image to imgSize x imgSize
    cwt = imresize(im,[imgSize imgSize]);
end