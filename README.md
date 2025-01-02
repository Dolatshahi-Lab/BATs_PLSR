# BATs_PLSR
A toolkit to produce an orthogonalized PLS-R model predicting the impact of BAT receptor expression on tumor reduction.

CV.m: Performs K-fold cross-validation for model.

OPLS.m: Orthogonalizes X data so that direction of maximum variance in Y is in the direction of latent variable 1. Removes orthogonal components. Outputs a filtered X matrix which is passed into 'plsregress'.

PLSR_main.m: Takes raw data as an nxm array with m variables and n observations (X) and an nx1 array of Y values (output). Runs 'plsregress' with  k-fold cross-validation, and compares model performance to a user-specified number of null models.

PLSR_plot.m: Calls functions loadings_plot.m, scores_plot.m, and VIP.m to produce a loadings bar plot, X scores plot, and VIP scores bar plot.

VIP.m: Computes Variable importance in projection (VIP) scores and plots them as a bar graph with VIP scores artifically directioned and colored according to feature loadings on latent variable 1.

findFDR.m: Computes the adjusted p-values from the Wilcoxon rank sum pairwise comparisons using the Benjamini-Hochberg method controlling the false discovery rate at alpha = 0.05.

loadings_plot.m: Plots the loadings on LV1 and LV2 as 2 bar graphs.
permtest.m: Runs a permutation test using 'nperm' permutations.

sample_3C.m: An implementation file to produce the OPLS-R model for the 3 cell line experiment. Produces scatterplots comparing BAT cell counts to normalized rate of tumor growth for receptor bins with VIP > 1.

sample_3D.m: An implementation file to produce the OPLS-R model for the 3 donor experiment
scores_plot.m: Plots the X scores on LV1 and LV2, and reports the percent variance captured in both X.

x_input_3Cancer.csv: Binned BAT cell counts for the 3 cell line experiment

x_input_3Donor.csv: Binned BAT cell counts for the 3 donor experiment

y_input_3Cancer.csv: Normalized rate of tumor change for the 3 cell line experiment

y_input_3Donor.csv: Normalized rate of tumor change for the 3 donor experiment
