# FORCE 2020 Well-Log Analysis

<img src="./images/well_locations_map.png"
     alt="FORCE 2020 well locations on the Norwegian continental shelf"
     width="350"
     align="right">
## Purpose
This project uses the public FORCE 2020 North Sea well-log
dataset to develop reproducible workflows for subsurface data
quality assessment, exploratory analysis and SQL/Pandas data
manipulation.

## Current work

- Built an inventory of all 118 LAS wells, including depth range, sampling interval, available curves and missing-data coverage.

- Mapped well locations and reconstructed available well trajectories to examine the deviation and 3d spatial structure of the dataset.

- Combined selected logs from all wells into a sample-level dataset containing about 2.34 million depth rows.

- Examined original lithofacies labels and interpretation-confidence values across wells.

- Analysed GR, RHOB, NPHI, DTC, RDEP and PEF distributions and data completeness.

- Compared log responses between lithofacies using representative well panels and petrophysical crossplots.

- SQL analysis using DuckDB

## Exploratory analysis

The dataset is strongly unbalanced. Shale accounts for about 61% of the labeled samples, followed by sandstone and mixed or interbedded sandstone/shale. Log availability also varies considerably between curves and wells. These issues should be considered before fitting a classification model.

For the first geological analysis I concentrated on GR, RHOB, NPHI, DTC, RDEP and PEF. About 1.43 million rows contain a supplied lithofacies label. Shale is the dominant class, followed by sandstone and sandstone/shale, while several other lithologies occur much less frequently.

I compared log distributions between lithofacies and examined several conventional crossplots. Some lithologies produce recognisable responses, but the main siliciclastic classes overlap strongly.

This overlap, together with class imbalance and variable log coverage, will need to be considered during modelling.

## Next stage

The next stage is lithofacies classification with validation between wells. This is intended to test whether a model can generalise to a different well instead of reproducing patterns from preexisting intervals.

## Planned work

- well-level validation
- facies classification
- GIS integration

## Tools

Python
Pandas
NumPy
Matplotlib
DuckDB
SQL
GIS








<img src="./images/well_locations_trajectories_vertically_exaggerated_3d_map.png"
     alt="well locations and trajectories in 3d"
     width="600">

<img src="./images/well_trajectory.png"
     alt="example well trajectory"
     width="550">

<img src="./images/facies_plot.png"
     alt="cross plot of bulk density and porosity"
     width="600">

<img src="./images/log_panel_example.png"
     alt="example wireline log panel"
     width="850">
     
<img src="./images/cross_plot_example_nphi_rhob.png"
     alt="cross plot of bulk density and porosity"
     width="700">

<img src="./images/cross_plot_example_rhob_dtc.png"
     alt="cross plot of bulk density and porosity"
     width="700">





