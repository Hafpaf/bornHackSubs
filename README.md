# BornHack subtitles

Goal: Create subtitles for talks at BornHack

Inspiration: Some chaos events use [c3subtitles](https://c3subtitles.de/) to creating subtitles for talks. 
This serves multiple purposes: enabling folks who have hearing difficulties to access talk information and providing an option to follow talks silently in the background.

There are two main tasks for this project:

1. Transcribe talks
2. Proof reading and timing correction

The transcription will largely be done with OpenAI Whisper, an open source Automatic Speech Recognition (ASR) machine learning model. I can be done locally on a machine with minimum 16 GB GPU VRAM as well as 16 GB RAM.

The proofreading involves humans to correct context and timing errors from Whisper, as well as ensuring the overall quality of the subtitles.

## Contribute

#### Timing correction and proofreading

- Step 1) Read and try to follow the [c3subtiles styleguide](https://wiki.c3subtitles.de/en:styleguide) when creating subtitles
- Step 2) Choose a talk and check if it has already been transcribed
- Step 3) Create an issue on Github outlining which video you are working on and progress
- Step 4) Move subrip file from [raw transcription](raw_transcriptions/) directory to [draft](draft/) directory 
- Step 5) Do proofreading and timing.
  - Use xxx tool or similar to easier process SRT files (ToDo: Find a good an easy-to-use tool)
- Step 6) If finished, move to [finished](finished/) directory and mark Github Issue as resolved


#### Transcription

Use the script [collect_talks.sh](collect_talks.sh) to collect all talks available for a BornHack camp or simply download a single video.

Usage:
- Find the video file RSS feed from a BornHack camp in the top right corner of the media.ccc.de front-end, see [BornHack 2023](https://media.ccc.de/c/bornhack2023).
- Use the RSS feed as argument for script
```bash
./collect_talks.sh https://media.ccc.de/c/bornhack2023/podcast/mp4-hq.xml
```

Setup and use the [ASR subtitles](https://github.com/Hafpaf/ASR_subtitles) tool to transcribe with the OpenAI Whisper model. The large model is preferred.

### Numbers

For future reference, it took an Nvidia RTX A4000 GPU with the medium Whisper model 118 minutes to transcribe the following videos (2023-11-10):

- import-56116-eng-Chat_Control_-_the_next_months_will_be_critical_hd.mp4
- import-56117-eng-Surely_FOSS_has_no_technical_debt_Right_Right_hd.mp4
- import-56118-eng-An_introduction_to_digital_consent_Why_a_new_definition_with_new_tools_and_specifications_are_needed_hd.mp4
- import-56119-eng-LabIX_Creating_an_Internet_Exchange_in_Your_Local_Hackerspace_hd.mp4
- import-56120-eng-This_years_BornHack_badge_with_NFC_hd.mp4
- import-56121-eng-Hello_World_hd.mp4
- import-56122-eng-Open_source_chip_design_hd.mp4
- import-56123-eng-funion_A_Tor_Client_in_Elixir_hd.mp4
- import-56124-eng-Goodbye_World_hd.mp4
- import-56125-eng-State_of_the_Game_hd.mp4
- import-56140-eng-Performant_cross-platform_development_using_Flutter_hd.mp4
- import-56141-eng-R_on_OpenBSD_hd.mp4
- import-56142-eng-Sexy_SSH_Hacks_hd.mp4
- import-56143-eng-SimpleX_Chat_-_Simple_Messaging_With_Unusually_Good_Privacy_hd.mp4
- import-56144-eng-All_APIs_suck_can_we_build_one_that_sucks_less_hd.mp4
- import-56145-eng-How_to_create_better_content_videos_faster_with_OBS_hd.mp4
