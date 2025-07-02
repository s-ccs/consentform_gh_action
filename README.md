In order to use this:

1. new file in `.github/workflows/forms.yml`
2. Fill in:

```yml
on:
 push:
  paths:
    - project*.toml
    - .github/workflows/forms.yml
jobs:
  build-deploy:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        language: 
          - de
          - en
    steps:
      - name: Generate Forms
        uses: s-ccs/consentform_gh_action@main
        with:
         language: ${{ matrix.language }}
```
3. Have a `project_*.toml` file in your root directory.

The toml file currently needs the following fields:

```toml
[Consentform]
    pay_per_hour = 15
	   study_duration_hrs = 3

    use_eeg = false
    use_eyetracking = true
	use_vr = false

	study_purpose_de = """In dieser Studie untersuchen wir, wie Menschen Bilder wahrnehmen, indem wir die Gehirnaktivität mit EEG und die Augenbewegungen mit einem Eye-Tracker aufzeichnen."""
	study_purpose_en = "In this study, we will investigate how humans perceive images by recording brain activity with EEG and eye movements using an eye-tracker."
    
	study_task_de =  "Es werden Ihnen verschiedene Bilder auf dem Monitor präsentiert. Ihre Aufgabe ist es, die Bilder frei zu erkunden."
	study_task_en = "We will present different pictures on the screen. Your task is to freely explore these pictures."
	
	researcher_details_de = """Verantwortliche Person: Benedikt Ehinger  
								Computational Cognitive Science (CCS)  
								Institut für Visualisierung und Interaktive Systeme (VIS)   
								Universität Stuttgart  
								Universitätsstraße 32  
								70569 Stuttgart  
								E-mail: benedikt.ehinger@vis.uni-stuttgart.de"""
	researcher_details_en = """Responsible Principal Investigator: Benedikt Ehinger  
								Computational Cognitive Science (CCS)  
								Institute for Visualisation and Interactive Systems (VIS)   
								University of Stuttgart  
								Universitätsstraße 32  
								70569 Stuttgart  
								E-mail: benedikt.ehinger@vis.uni-stuttgart.de"""

	data_processing_contactperson = "Benedikt Ehinger (benedikt.ehinger@vis.uni-stuttgart.de)"
```
# Citation
If you use this tool, please cite [![DOI](https://zenodo.org/badge/796770945.svg)](https://doi.org/10.5281/zenodo.14906238)
