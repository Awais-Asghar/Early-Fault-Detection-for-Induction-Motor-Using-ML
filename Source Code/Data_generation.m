% Number of samples to generate for each variable
num_samples = 100;

% Synthetic Data for Stator Short Circuit Condition
Fs_elec = 50 + randn(1, num_samples) * 0.5;  % Slight variation around nominal frequency
Fs_vib = 60 + randn(1, num_samples) * 0.5;   % Slight variation in vibration frequency
Health = repmat("Stator Short Circuit", num_samples, 1);  % Fault description

% Current Data (Ia, Ib, Ic) - Adding imbalance or spikes
Ia = 10 + randn(1001000, 1) * 0.2;  % Slight variations
Ib = 10.2 + randn(1001000, 1) * 0.25;  % Introducing imbalance
Ic = 9.8 + randn(1001000, 1) * 0.2;    % Slightly lower current

% Load Condition
Load = repmat("Fault Load", num_samples, 1);

% Trigger Data
Trigger = rand(153504, num_samples);  % Random trigger data for example

% Vibration Data - Adding higher harmonics or amplitudes
Vib_acpe = 5 + randn(153504, num_samples) * 0.5;  % Slightly higher amplitudes
Vib_acpi = 4.5 + randn(153504, num_samples) * 0.5;
Vib_axial = 5.2 + randn(153504, num_samples) * 0.6;
Vib_base = 5.1 + randn(153504, num_samples) * 0.6;
Vib_carc = 4.8 + randn(153504, num_samples) * 0.5;

% Save to Workspace
save('StatorShortCircuitData.mat', 'Fs_elec', 'Fs_vib', 'Health', ...
    'Ia', 'Ib', 'Ic', 'Load', 'Trigger', 'Vib_acpe', 'Vib_acpi', 'Vib_axial', 'Vib_base', 'Vib_carc');

disp('Synthetic data for stator short circuit condition generated and saved.');