function analyze_data()
    %THE VALUES HERE ARE JUST PLACEHOLDERS
    %You will need to change them!!!
    fpath = 'C:\Users\taylorott\'; %path string (must end with \)
    fname = 'bottle_data01.xls'; %spreadsheet file name
    sheet_name = 'Sheet1';
    cell_range = 'A2:F7';
    %concatenate path and filename
    file_string = [fpath,fname];
    data_mat = readmatrix(file_string,'Sheet',sheet_name,'Range',cell_range);
    %pull the lists of masses and frequencies out of
    %data_mat, so each can manipulated independently
    total_mass_list =
    freq_list =

    water_density = %density of water
    air_density = %density of air
    gamma_air = %heat capacity ratio of air
    P0 = %the ambient (atmospheric) pressure in Needham
    neck_diameter = %inner diameter of bottle opening
    neck_length = %length of the bottle neck
    empty_bottle_mass = %mass of completely empty bottle
    filled_bottle_mass = %mass of completely filled bottle

    area_cx = %cross-sectional area of bottle neck
    neck_volume = %volume of bottle neck
    neck_air_mass = %mass of air in bottle neck
    bottle_volume = %total volume that the bottle can hold
    empty_cavity_volume = %volume of the cavity (without any water)

    water_mass_list = %mass of water inside the bottle (list)
    water_volume_list = %volume of water inside the bottle (list)
    %total volume of air inside the bottle (cavity AND neck)
    %for different amounts of water (list)
    air_volume_list =

    max_volume = max(air_volume_list);
    max_freq = max(freq_list);
    figure;
    hold on;
    axis([0,1.1*max_volume,0,1.1*max_freq]);
    plot(air_volume_list,freq_list,'ro','markerfacecolor','r');
    %remember to include axis labels and a title!!!
    xlabel('');
    ylabel('');
    title('');

    n_points = %number of points
    %generate a range of cavity volumes from empty to full
    V0_list = linspace(empty_cavity_volume/100, empty_cavity_volume, n_points);

    %list of predicted stiffnesses for each cavity volume
    %remember to use the ./ (elementwise division) when
    %doing division, instead of just using / !
    predicted_k_list =
    %list of predicted frequencies for each cavity volume
    predicted_freq_list =
    %total volume (cavity + neck) of air inside the bottle
    %for each cavity volume
    predicted_total_volume =

    %plot the predicted values on the same axes as the measured values
    plot(predicted_total_volume,predicted_freq_list,'k','linewidth',2);
    %please include a legend!
    mylegend = legend('','');
    %set the legend location to the top-right
    legend_loc = 'northeast';
    set(mylegend,'location',legend_loc);
end