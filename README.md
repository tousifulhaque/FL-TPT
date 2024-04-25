# FL-TP

**FL-TP: Federated Learning-based Vehicle Trajectory Prediction Algorithm against Cyberattacks**
- ![avatar](./Result_Pic/model.png)

**Create a new python environment**
```bash
python3 -m venv fltp
```
**Activate the environmet**
```bash
source fltp/bin/activate
```

**Requirments**
Install all the packages from requirments.txt
```bash
pip install -r requirements.txt
```

**Data**

The data set can be downloaded from the official website of VeRemi(https://veremi-dataset.github.io/), and generated in the data_make folder.Download the .tar file and extract them with the `extract.sh` script. This dataset is 18GB and takes hours to generate data from it. So, a subset of the data was taken and a data sample was generated and kept under `./data` directory. A pickle file of the `DataGenerator` is also kept under `FL-TP` for the ease of use.

The data Sample could be seen in the url {https://github.com/CoderTylor/FL-TP/tree/main/FL-TP}

**Running the experiments**

The baseline experiment trains the model in the Fed-Avg.

To run the code:
Change directory to `FL-TP` and run:

```shell
python fltp_main.py --model=LSTM --epochs=200 --num_users=10 --model=Transformer
```

**Options**
The default values for various paramters parsed to the experiment are given in options.py. Details are given some of those parameters:

```shell
--gpu: Default: None (runs on CPU). Can also be set to the specific gpu id.

--epochs: Number of rounds of training.

--lr: Learning rate set to 0.01 by default.

--seed: Random Seed. Default set to 1.

--num_users:Number of users. Default is 100.

--local_ep: Number of local training epochs in each user. Default is 10.

--local_bs: Batch size of local updates in each user. Default is 10.
```


**Experiment Result**

- ![avatar](./Result_Pic/comparision.png)

