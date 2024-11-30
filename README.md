# PlantDisease

## 介绍
<p style="text-indent: 2em;">随着农业现代化的推进，病虫害管理已成为影响农作物产量与质量的关键因素之一。传统的病害识别与防治方法依赖于人工经验，不仅耗时费力，还容易出现误判和延误治疗时机，影响农业生产的稳定性与效率。为解决这一问题，我们基于先进的深度学习技术与微信小程序平台，开发了一款创新的农作物病害识别与治疗方案推荐系统，通过大模型的精准识别能力，帮助农民朋友快速、准确地诊断病害并采取科学的防治措施，从而提升农业生产效率和农产品质量。</p>

## 演示视频
[智农行 - 基于PyTorch框架的卷积神经网络（CNN）模型的识别农作物病害小程序演示视频]()

## 项目简介
<p style="text-indent: 2em;">本项目通过微信小程序平台进行部署，利用微信的广泛用户基础和便捷性，降低了系统使用的门槛。农民或农业工作者只需使用手机拍摄农作物病害图片并上传，就能实时获得准确的病害识别结果和治疗方案，而无需复杂的设备或专业知识。这种基于微信小程序的创新应用使得农业智能化技术更加普及，尤其适用于农村和农业生产环境。</p>

## 项目核心
<p style="text-indent: 2em;">通过基于卷积神经网络的病害图像识别，系统能够快速、准确地诊断农作物病害，并根据诊断结果提供个性化的治疗方案。与人工诊断相比，精准化的处理方式显著提高了病害防治的效率。此外，系统通过微信小程序平台发布，使农业智能化技术触手可及，降低了使用门槛，尤其适合农村地区的农民用户。同时，推荐低毒、低残留的环保药物，推动可持续农业发展。集成的AI对话助手和农业百科功能提升了用户体验和农业知识普及。</p>

## 项目实现
 后端Python Flask + MySQL进行接口开发和数据存储服务。

## 后端技术栈


|     技术     |               说明               |                               链接                               |
| :----------: | :----------------------------------: | :--------------------------------------------------------------: |
|  [SpringBoot   ](https://spring.io/projects/spring-boot)  |           Web应用框架             |                   https://spring.io/projects/spring-boot              |


## 🚀 部署过程

```bash
# 克隆项目
git clone https://github.com/liangjuyao/PlantDisease.git

# 使用conda创建环境，python版本是3.8（前提装有Anaconda）
conda create -n leaf python=3.8

# 激活环境
conda activate leaf

# 在项目根目录下打开控制台安装依赖包
pip install -r requirements.txt -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple --trusted-host=https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple

# 配置数据库地址和端口
在项目根目录下找到plant.sql文件导入到数据库工具中

在项目根目录下找到config.py，填写数据库地址、端口、数据库名称、用户名、密码
HOSTNAME = ''
PORT = ''
DATABASE = ''
USERNAME = ''
PASSWORD = ''

    # 示例：
        # HOSTNAME = '127.0.0.1'      # 数据库主机地址
        # PORT = '3306'               # 数据库端口
        # DATABASE = 'plant'          # 数据库名称
        # USERNAME = 'your_username'  # 数据库用户名
        # PASSWORD = 'your_password'  # 数据库密码

# 配置启动地址和端口
在项目根目录下找到env.ini,填写启动地址和端口
host = 
port = 

    # 示例：
        # host = 127.0.0.1            # 启动地址
        # port = 5000                 # 启动端口


# 启动
点击app.py中的if __name__ == '__main__'启动入口
```

## AI技术
卷积神经网络（CNN）
 <p style="text-indent: 2em;">
1、应用模型：在本项目中，CNN被用于从农作物的叶片图像中提取特征并进行病害分类。网络通过多层卷积层、池化层和全连接层提取并处理图像特征，最终输出病害类型的预测结果。
网络架构：我们采用了一种经典的深度卷积神经网络结构，包括多个卷积层（Conv Layer）和池化层（Pooling Layer）。每个卷积层应用多个卷积核（滤波器）对输入图像进行特征提取，池化层则用于降维，减少计算量和提高模型的鲁棒性。最后，通过全连接层（Fully Connected Layer）将提取的特征映射到输出空间，最终预测出39种病害类别。
训练参数：学习率设为0.001，使用Adam优化器；批量大小为32；采用交叉熵损失函数。</p>

 <p style="text-indent: 2em;">
2、数据增强技术：
图像翻转（Flip）：通过水平或垂直翻转图像来增加训练数据的多样性。
旋转与缩放：通过随机旋转和缩放图像，模拟不同角度和距离下拍摄的作物叶片图像。
Gamma 校正与颜色增强：通过调整图像的亮度和对比度，增强模型在不同光照条件下的鲁棒性。
噪声注入：对图像加入随机噪声，增加训练数据的多样性，从而提高模型的鲁棒性。
PCA 颜色增强：通过主成分分析（PCA）对图像进行颜色空间变换，从而改变图像的色调，增强模型对不同颜色变化的适应能力。</p>

 <p style="text-indent: 2em;">
3、本项目的深度学习模型使用PyTorch框架进行构建和训练。PyTorch是一个开源的深度学习库，因其灵活性、易用性和高效性而广泛应用于图像识别任务。我们利用PyTorch进行模型的构建、训练、优化和推理过程。</p>

 <p style="text-indent: 2em;">
4、训练参数设置：
优化器（Optimizer）：我们使用了Adam优化器，它在大多数图像分类任务中表现优异。Adam优化器结合了Momentum和RMSprop的优点，能够自适应调整每个参数的学习率，从而加速收敛。
损失函数（Loss Function）：为了解决多类别分类问题，我们采用了交叉熵损失函数（Cross-Entropy Loss），它适用于多分类任务，能够有效地评估模型输出概率分布与真实标签之间的差距。
批量大小（Batch Size）：为了提高训练速度，我们设置了批量大小为64，以保证内存使用的同时提升训练效率。</p>

## 代码实现

导入依赖项：

```python
# General
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
# Torch
import torch
from torchvision import datasets, transforms # datsets  , transforms
from torch.utils.data.sampler import SubsetRandomSampler
import torch.nn as nn
import torch.nn.functional as F
from datetime import datetime
```
转换用于数据增强，例如裁剪图像、调整图像大小、将图像转换为张量、旋转图像等等。转换用作所有图像的过滤器。我们使用以下代码来转换图像。
```python
transform = transforms.Compose(
    [transforms.Resize(255), transforms.CenterCrop(224), transforms.ToTensor()]
)
```
Datasets 类用于创建或导入数据集。在数据集中，它有许多著名的数据集，如 MNIST、CIFAR-10、CIFAR-100、KMNIST 等。
我们使用数据集从图像制作我们自己的数据集，为此，我们使用数据集的 ImageFolder 方法。
我存储所有图像的文件夹被命名为“Dataset”。我们还将转换应用于所有图像。
```python
dataset = datasets.ImageFolder("Dataset", transform=transform)
```
火车测试拆分 ：
```python
indices = list(range(len(dataset)))
split = int(np.floor(0.85 * len(dataset)))  # train_size
validation = int(np.floor(0.70 * split))  # validation
np.random.shuffle(indices)
train_indices, validation_indices, test_indices = (
    indices[:validation],
    indices[validation:split],
    indices[split:],
)
```
在上面的代码中，我们首先获取索引，然后将数据拆分为 train 、 test 和 validation 数据。总共 36584 个用于 train，15679 个用于 validaiton 和剩余的图像用于测试。
```python
train_sampler = SubsetRandomSampler(train_indices)
validation_sampler = SubsetRandomSampler(validation_indices)
test_sampler = SubsetRandomSampler(test_indices)
```
SubsetRandomSampler 用于对我们的数据进行采样。在这里，我们将创建一个 SubsetRandomSampler Object 的对象，稍后我们将在训练数据加载器和测试数据加载器中使用这个采样器。
```python
batch_size = 64
train_loader = torch.utils.data.DataLoader(
    dataset, batch_size=batch_size, sampler=train_sampler
)
test_loader = torch.utils.data.DataLoader(
    dataset, batch_size=batch_size, sampler=test_sampler
)
validation_loader = torch.utils.data.DataLoader(
    dataset, batch_size=batch_size, sampler=validation_sampler
)
```
## 模型创建
我们使用卷积神经网络来创建模型。我们创建模型层，如下图所示。我们还为 Conv 层和 Pool 层指定了滤镜大小以及每个层的形状。

形状 = （ 通道 ， 高度 ， 宽度 ）
1.jpg

在 PyTorch 中，形状不是自动计算的，我们必须手动处理每一层的形状。在第一个全连接层，我们必须根据卷积层的形状提到输出大小。此计算也称为卷积算术。
这是卷积算术的方程：
2.jpg

在这里，我们必须将图像分为 39 个类别，这就是为什么我们使用分类交叉熵作为损失和 adam 优化器。在模型中，我们使用 ReLU 作为激活，但对于最后一层，我们必须使用 Softmax 激活。在 PyTorch 中，我们有一个交叉熵损失，它是 softmax 和类别交叉熵损失的混合体。
```python
criterion = nn.CrossEntropyLoss()  
optimizer = torch.optim.Adam(model.parameters())
```
批量梯度下降：
```python
def batch_gd(model, criterion, train_loader, test_laoder, epochs):
    train_losses = np.zeros(epochs)
    test_losses = np.zeros(epochs)
for e in range(epochs):
        t0 = datetime.now()
        train_loss = []
        for inputs, targets in train_loader:
            inputs, targets = inputs.to(device), targets.to(device)
optimizer.zero_grad()
output = model(inputs)
loss = criterion(output, targets)
train_loss.append(loss.item())  # torch to numpy world
loss.backward()
            optimizer.step()
train_loss = np.mean(train_loss)
validation_loss = []
for inputs, targets in validation_loader:
inputs, targets = inputs.to(device), targets.to(device)
output = model(inputs)
loss = criterion(output, targets)
validation_loss.append(loss.item())  # torch to numpy world
validation_loss = np.mean(validation_loss)
train_losses[e] = train_loss
        validation_losses[e] = validation_loss
dt = datetime.now() - t0
print(
            f"Epoch : {e+1}/{epochs} Train_loss:{train_loss:.3f} Test_loss:{validation_loss:.3f} Duration:{dt}"
        )
return train_losses, validation_losses
```
上面的函数用于 Batch Gradient Descent。batch_gd（） 是所有学习发生的函数
```python
def accuracy(loader):
    n_correct = 0
    n_total = 0
for inputs, targets in loader:
        inputs, targets = inputs.to(device), targets.to(device)
outputs = model(inputs)
_, predictions = torch.max(outputs, 1)
n_correct += (predictions == targets).sum().item()
        n_total += targets.shape[0]
acc = n_correct / n_total
    return acc
train_acc = accuracy(train_loader)
test_acc = accuracy(test_loader)
validation_acc = accuracy(validation_loader)
```
通过使用这个模型，我们获得了准确性
```python
87% 的训练数据，84% 的验证数据，83% 的测试数据
```

## 模型工作 ：
<p style="text-indent: 2em;">
基本上，首先我们将每张图片调整为 224 x 224。之后，此图像馈送到卷积神经网络中。我们馈送彩色图像，使其具有 3 个通道 RGB。第一个 conv 层我们应用 32 个滤波器大小或输出通道。这意味着 32 个不同的过滤器应用于图像并尝试查找特征，然后使用 32 个特征，我们创建一个具有通道 32 的特征图。因此，从 3 x 224 x 224 将变为 32 x 222 x 222。之后，我们应用 ReLU 激活函数来消除非线性，然后我们应用批量归一化来归一化神经元的权重。之后，此图像馈送到最大池层，该层仅采用最相关的特征，因此我们获得形状为 32 x 112 x 112 的输出图像。之后，我们将此图像馈送到下一个卷积层，其过程与上述相同。最后，我们将最终的最大池层输出展平，并馈送到下一个线性层，也称为全连接层，最后，作为最后一层，我们预测 39 个类别。因此，作为模型输出，我们得到 1x39 大小的张量。从该张量中，我们获取张量中最大值的索引。
