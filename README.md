# FORCE 2020 Well-Log Analysis
     
## Purpose
This project uses the public FORCE 2020 North Sea well-log
dataset to develop reproducible workflows for subsurface data
quality assessment, exploratory analysis and SQL/Pandas data
manipulation.




<h2>Dataset geometry</h2>

<table>
<tr>
<td width="42%" align="center">
  <img src="./images/well_locations_map.png"
       alt="FORCE 2020 well locations on the Norwegian continental shelf"
       width="330">
</td>
<td width="58%" align="center">
  <img src="./images/well_trajectory.png"
       alt="example FORCE 2020 well trajectory"
       width="470">
</td>
</tr>
<!-- <tr>
<td align="center"><sub>118 FORCE 2020 well locations</sub></td>
<td align="center"><sub>Example reconstructed well trajectory</sub></td>
</tr> -->
</table>



## Current work

- Built an inventory of all 118 LAS wells, including depth range, sampling interval, available curves and missing-data coverage.

- Mapped well locations and reconstructed available well trajectories to examine the deviation and 3d spatial structure of the dataset.

- Combined selected logs from all wells into a sample-level dataset containing about 2.34 million depth rows.

- Examined original lithofacies labels and interpretation-confidence values across wells.

- Analysed GR, RHOB, NPHI, DTC, RDEP and PEF distributions and data completeness.

- Compared log responses between lithofacies using representative well panels and petrophysical crossplots.

- SQL analysis using DuckDB

## Exploratory analysis

About 1.43 million rows contain a supplied lithofacies label. The dataset
is strongly unbalanced: shale accounts for about 61% of labelled samples,
followed by sandstone and sandstone/shale. Several other lithologies occur
much less frequently.

<!-- <p align="center">
    <img src="./images/facies_plot.png"
        alt="FORCE 2020 lithology sample counts"
        width="630">
</p> -->

### Representative well

The principal logs were examined together with the supplied lithofacies
interpretation to compare log response with geological classification.

<p align="center">
  <img src="./images/log_panel_example.png"
       alt="FORCE 2020 Well 34/10-16R wireline-log and lithofacies panel"
       width="950">
</p>
I compared log distributions between lithofacies and examined several conventional crossplots. Some lithologies produce recognisable responses, but the main siliciclastic classes overlap strongly.

<p align="center">
  <img src="./images/cross_plot_example_nphi_rhob.png"
       alt="neutron porosity and bulk-density crossplot by lithofacies"
       width="700">
</p>

This overlap, together with class imbalance and variable log coverage, will need to be considered during modelling.

## Next stage

The next stage is lithofacies classification with validation between wells.
This is intended to test whether a model can generalise to a different well
instead of reproducing patterns from preexisting intervals.

## Tools

Python · Pandas · NumPy · Matplotlib · DuckDB · SQL · GIS



<!-- 
<img src="./images/well_locations_trajectories_vertically_exaggerated_3d_map.png"
     alt="well locations and trajectories in 3d"
     width="600"> -->











