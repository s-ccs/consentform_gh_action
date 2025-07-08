In order to use this:

1. Copy the file from `.github/workflows/forms.yml`
3. Have a `project_*.toml` file in your root directory.

The toml file currently needs the following fields:

```toml
[Consentform]
    pay_per_hour = 15
	   study_duration_hrs = 3

    use_eeg = false
    use_eyetracking = true
	use_vr = false

	study_purpose_de = ""
	study_purpose_en = ""
    
	study_task_de =  ""
	study_task_en = ""
	
	researcher_details_de = ""
	researcher_details_en = ""

	data_processing_contactperson = ""
```
# Local Run
If you want to run this not via github-action, prepare a `_project.toml` file in the root directory.

# Citation
If you use this tool, please cite [![DOI](https://zenodo.org/badge/796770945.svg)](https://doi.org/10.5281/zenodo.14906238)
