# track_data
Feature-tracking datasets produced by [HRCM](https://hrcm.ceda.ac.uk).


**Introduction**

Tracked phenomena include tropical cyclones, extratropical cyclones, smaller-scale cyclones (e.g., polar lows, medicanes) and mesoscale convective systems, and these datasets have been produced with peer-reviewed feature-tracking algorithms, particularly *TRACK* (Hodges et al., 1994; Hodges et al., 1995; Hodges et al., 2017), *TempestExtremes* (Ullrich et al., 2017; Ullrich et al., 2021), *PyFLEXTRKR* (Feng et al., 2023), and *SyCLOPS* (Han and Ullrich, 2025). Track data should be read using [HuracanPy](https://huracanpy.readthedocs.io/en/stable/). If you identify any data issues, such as missing files or corrupt or malformatted data, please [raise an issue](https://github.com/ncas-metoffice-hrcm/track_data/issues).

*This repo is a work in progress; please bear with us...*


**Basic directory structure**

```
── phenomenon/                    # e.g., tropical_cyclones/
    └── dataset_class/            # e.g., model_simulations/
        └── dataset_name/         # e.g., HadGEM3/
            └── algorithm/        # e.g., TRACK/
                └── dataset_id/   # e.g., u-ch330/ (a 10-km or N1280 atmosphere-only simulation)
                    └── domain/   # e.g., NH/ (Northern Hemisphere)
                        └── track_file_year1
                        └── track_file_year2
                        └── track_file_year3
```
