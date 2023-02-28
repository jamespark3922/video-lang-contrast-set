# Exposing the Limits of Video-Text Models through Contrast Sets

Repository for [Exposing the Limits of Video-Text Models through Contrast Sets](https://openreview.net/pdf?id=H_Wx_yQfBZq) (NAACL Short 2022).

## Updates
- 2/28/2023: Results for 7k/9k Train splits in MSRVTT. 
- 6/24/2022: Released contrast sets for MSRVTT. 

To Do:
 - Release contrast sets for LSMDC
 - Release code to generate contrast sets automatically


## Data
We share the verb phrase based contrast set for [MSRVTT](http://ms-multimedia-challenge.com/2017/dataset) and [LSDMC-ID](https://sites.google.com/site/describingmovies/) in this repository.
Code to generate the contrast set will be released soon.

| Dataset   | Link | Contrast Set Type        |
|--------|:-----------:|-------------|
| MSRVTT      | [Data](https://github.com/jamespark3922/video-lang-contrast-set/tree/master/msrvtt)   | Verb |
| LSMDC       | TBD         | TBD |

### MSRVTT 

#### Download
The verb based contrast sets generated by language model (Verb<sub>LM</sub> MC) and humans (Verb<sub>Human</sub> MC) can be found in `msrvtt/`.
You can find the video and annotation data following this [link](https://github.com/m-bain/frozen-in-time#-finetuning-benchmarks-msr-vtt). The sets are generated for the full-test set of MSRVTT with 2990 videos.

You can additionally refer to download script in [CLIPBert](https://github.com/jayleicn/ClipBERT/blob/main/scripts/download_msrvtt.sh) to get the original MSRVTT split data. To just get train and val, you can also run the download script:

```
bash msrvtt/download_msrvtt_train_val.sh
```

Example data:

|clip     |ending0                                           |ending1                                    |ending2                                          |ending3                                                  |ending4                        |label|
|---------|--------------------------------------------------|-------------------------------------------|-------------------------------------------------|---------------------------------------------------------|-------------------------------|-----|
|video9770|the boy is trying to fix the problem              |the boy is trying to exacerbate the problem|two men on wave runner in ocean rescuing a surfer|asian man discusses technology in the younger generations|a group is dancing             |0    |
|video9771|a woman is putting items into a miniature toy oven|a child is running around on a mat         |a woman pushing a stroller                       |a child is rolling around on a mat                       |a game show host hosting a game|1    |


#### Results

`train-9k` is the 9k train and `test-1k-A` is the 1k test-split proposed by [JSFUsion [Yu et. al.]](https://arxiv.org/abs/1808.02559). 

`train-7k` is the 7k train and `test-full` is the full test videos in the original MSRVTT. We use the 7k training videos in [CLIP4CLIP repo](https://github.com/ArrowLuo/CLIP4Clip).

| MSRVTT-train-7K   | V to T (R@1)<br>test-1k-A | T to V (R@1)<br>test-1k-A | Random MC <br>test-full | Gender MC <br>test-full |  Verb <sub>LM</sub> MC <br>test-full | Verb <sub>Human</sub> MC <br>test-full |
|--------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| [CLIP-Straight](https://arxiv.org/pdf/2102.12443.pdf)  | 27.2  | 31.2 | 94.1 | 69.6 | 65.4 | 65.1 |
| [MMT](https://arxiv.org/pdf/2007.10639.pdf)            | 24.8  | 25.5 | 92.4 | 75.5 | 72.8 | 71.3 |
| MMT with CLIP features                                 | 30.5  | 30.3 | 95.0 | **80.1** | 73.8 | 71.4 | 
| [CLIP4CLIP<sub>meanP<sub>](https://arxiv.org/pdf/2104.08860.pdf)      | **43.0**  | **42.1** | **96.2** | 76.7 | **76.2** | **73.7** |  

| MSRVTT-train-9K   | V to T (R@1)<br>test-1k-A | T to V (R@1)<br>test-1k-A | Random MC <br>test-1k-A  | Gender MC <br>test-1k-A |  Verb <sub>LM</sub> MC <br>test-1k-A  | Verb <sub>Human</sub> MC <br>test-1k-A  |
|--------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| [CLIP-Straight](https://arxiv.org/pdf/2102.12443.pdf)  | 27.2  | 31.2 | 91.2 | 71.4 | 64.9 | 63.5 |
| [MMT](https://arxiv.org/pdf/2007.10639.pdf)            | 27.0  | 26.6 | 93.5 | 75.9 | 75.2 | 72.9 |
| MMT with CLIP features                                 | 33.9  | 34.0 | 95.6 | **80.9** | **77.7** | 73.3 | 
| [CLIP4CLIP<sub>meanP<sub>](https://arxiv.org/pdf/2104.08860.pdf)      | 43.1  | 43.1 | 96.3 | 79.1 | 76.8 | **75.4** |
| [CLIP2Video](https://arxiv.org/pdf/2106.11097.pdf)     | **43.5**  | **45.6** | **97.0** | 76.0 | 76.8 | 74.3 |

### LSMDC
TBD 

#### Citation

```
@inproceedings{park-etal-2022-exposing,
    title = "Exposing the Limits of Video-Text Models through Contrast Sets",
    author = "Park, Jae Sung  and
      Shen, Sheng  and
      Farhadi, Ali  and
      Darrell, Trevor  and
      Choi, Yejin  and
      Rohrbach, Anna",
    booktitle = "Proceedings of the 2022 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies",
    month = jul,
    year = "2022",
    address = "Seattle, United States",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2022.naacl-main.261",
    pages = "3574--3586",
}
```

Please email jspark96@cs.washington.edu for more information about the dataset.
