% clear variables
clear

[y, fs] = audioread('40tamtam.ff.stereo.aiff');

% stereo to mono (average both channels)
ym = mean(y, 2);

[p, f] = pspectrum(ym, fs, 'power');

figure('Units', 'centimeters', 'Position', [0 0 15 20]);

subplot(2,1,1);
pspectrum(ym, fs, 'spectrogram', 'FrequencyLimits', [0 fs/4]);
title({'Gongo - Díâmetro 40 cm'; 'Espectrograma'});
xlabel('Tempo decorrido (minutos)');
ylabel('Frequência (kHz)');

h = colorbar;
ylabel(h, 'Amplitude (dB)');

subplot(2,1,2);
pspectrum(ym, fs, 'power', 'FrequencyLimits', [0 fs/4]);
title({'Gongo - Díâmetro 40 cm'; 'Resposta em frequência'});
xlabel('Frequência (kHz)');
ylabel('Amplitude (dB)');

print('tamtam40', '-dsvg');
