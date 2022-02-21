# Computer Vision models tips for production

The repo contains code and data for my [**blog post**](https://towardsdatascience.com/4-ways-to-mess-up-your-computer-vision-model-in-production-d4e198486928)

It provides useful tips on how **not to mess up** the Computer Vision model in production. I cover **4 real cases** that I've met while working as an ML engineer. Each is related to image processing before passing it to the algorithm (mainly neural networks):

- Orientation stored in EXIF
- Non-standrad color profile
- Differences in image libraries
- Resizing algorithms

## Running

There is a  [`Dockerfile`](./Dockerfile) with an environment to run the code.

One can either build and run it manually or use [`Makefile`](./Makefile)

```bash
make build
make run
```

It will start jupyter notebook which woule be available at `localhost:8888`.

After that feel free to open and run the notebook in [`notebooks/cv-prod-tips.ipynb`](notebooks/cv-prod-tips.ipynb)
