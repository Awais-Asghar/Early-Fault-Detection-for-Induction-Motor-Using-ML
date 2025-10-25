% Example 5x5 confusion matrix
confMat = [14, 9609,     11160,  6452, 40357; 
           0,     11761, 1041,     0,    0;
           0,   0,     14403,    0,    0;
           0,   0,     0,     9602,   0;
           0,     0,     0,     0,    15601];

% Calculate overall precision, recall, and F1 score
numClasses = size(confMat, 1);

% Initialize variables for micro-averages
totalTruePositive = sum(diag(confMat));
totalFalsePositive = sum(sum(confMat, 1)) - totalTruePositive;
totalFalseNegative = sum(sum(confMat, 2)) - totalTruePositive;

% Micro-averages
microPrecision = totalTruePositive / (totalTruePositive + totalFalsePositive);
microRecall = totalTruePositive / (totalTruePositive + totalFalseNegative);
microF1Score = 2 * (microPrecision * microRecall) / (microPrecision + microRecall);

% Macro-averages
macroPrecision = sum(diag(confMat) ./ sum(confMat, 1)) / numClasses;
macroRecall = sum(diag(confMat) ./ sum(confMat, 2)) / numClasses;
macroF1Score = 2 * (macroPrecision * macroRecall) / (macroPrecision + macroRecall);

% Display results
fprintf('Micro-Averages:\n');
fprintf('  Precision: %.2f\n', microPrecision);
fprintf('  Recall: %.2f\n', microRecall);
fprintf('  F1 Score: %.2f\n', microF1Score);

fprintf('\nMacro-Averages:\n');
fprintf('  Precision: %.2f\n', macroPrecision);
fprintf('  Recall: %.2f\n', macroRecall);
fprintf('  F1 Score: %.2f\n', macroF1Score);