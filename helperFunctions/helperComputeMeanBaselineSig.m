
function baselineSig = helperComputeMeanBaselineSig(data, video, subject, channel, fs, secs)
    % Gets ECG data of the given subject and video and extracts the ECG baseline for the given channel. 
    % The (:, channel) syntax selects all the samples for the specified channel.
    ecgBaseline = data.Data{1, subject}.ECG.baseline{video, 1}(:, channel);
    
    % Reshapes the ECG baseline data into multiple rows of 256 samples, i.e. 1 second
    BLSegments = reshape(ecgBaseline, [fs, size(ecgBaseline, 1) / fs]).';
    
    % Computes the mean of all 61 seconds of baseline activity
    baselineSig = repmat(mean(BLSegments), secs, 1);
end