
function cleanSig = helperSubtractBaseline(baselineECG, emotionalECG, fs, secs)
    emotionalECG = reshape(emotionalECG, [fs, secs]).';
    blr = emotionalECG - baselineECG;
    cleanSig = reshape(blr.', [fs * secs, 1]).';
end