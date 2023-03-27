
function ecgClean = helperApplyLowPassFilter(fs, fc, N, ecgNoisy)
    % Design the filter coefficients using the FIR1 function
    % Note: FIR1 uses a normalized cutoff frequency between 0 and 1, so we need to normalize fc by fs/2
    b = fir1(N, fc/(fs/2));
    
    % Apply the filter to the ECG signal using the filter function
    % Note: we use the filtfilt function to apply the filter twice (forward and backward) to eliminate
    %       any phase distortion introduced by the filter
    ecgClean = filtfilt(b, 1, ecgNoisy);
end