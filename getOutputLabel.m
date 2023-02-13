function label = getOutputLabel(valence, arousal)
    
    if valence > 2
        valence = "HV";
    else
        valence = "LV";
    end
    
    if arousal > 2
        arousal = "HA";
    else
        arousal = "LA";
    end

    label = valence + arousal;

end

