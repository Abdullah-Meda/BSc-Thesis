
function normalizedSignal = helperNormalizeSignal(ecgSignal)
    % Compute the mean and standard deviation of the signal
    signalMean = mean(ecgSignal);
    signalSTD = std(ecgSignal);

    % Apply z-score normalization
    normalizedSignal = (ecgSignal - signalMean) / signalSTD;
end