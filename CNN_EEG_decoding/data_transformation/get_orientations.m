EEG = pop_loadset('12_250hz_dt_lp40_eprej_picard_cleaned_iav.set');

orientation = nan(EEG.trials,1);
for k = 1:EEG.trials
    orientation(k) = EEG.epoch(k).tbl.theta;
end

csvwrite("12_Orientations.csv", orientation)

