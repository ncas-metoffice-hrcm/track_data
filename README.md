# track_data
Feature-tracking datasets produced by [HRCM](https://hrcm.ceda.ac.uk). *This repo is a work in progress.*

**Introduction**

Tracked phenomena include tropical cyclones, extratropical cyclones, smaller-scale cyclones (e.g., polar lows, medicanes) and mesoscale convective systems, and these datasets have been produced with peer-reviewed feature-tracking algorithms, particularly *TRACK* (Hodges et al., 1994; Hodges et al., 1995; Hodges et al., 2017), *TempestExtremes* (Ullrich et al., 2017; Ullrich et al., 2021), *PyFLEXTRKR* (Feng et al., 2023), and *SyCLOPS* (Han and Ullrich, 2025). Track data should be read using [HuracanPy](https://huracanpy.readthedocs.io/en/stable/). Wherever possible, more than on tracking algorithm has been applied to a given dataset, or this tracking work is ongoing. If you identify any data issues, such as missing files or corrupt or malformatted data, please [raise an issue](https://github.com/ncas-metoffice-hrcm/track_data/issues).

**Basic directory structure**

```python
── phenomenon/                    # e.g., tropical_cyclones/
    └── dataset_class/            # e.g., model_simulations/
        └── dataset_name/         # e.g., HadGEM3/
            └── algorithm/        # e.g., TRACK/
                └── dataset_id/   # e.g., u-ch330/ (an N1280 atmosphere-only simulation)
                    (additional sub-directories: different model experiments, ensemble members etc where necessary)
                    └── domain/   # e.g., NH/ (Northern Hemisphere)
                        └── track_file_year1
                        └── track_file_year2
                        └── track_file_year3
```
