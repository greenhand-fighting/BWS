import numpy as np
import pcl.pcl_visualization


lidar_path = "./000000.bin" 
# lidar_path 指定一个kitti 数据的点云bin文件就行了
points = np.fromfile(lidar_path, dtype=np.float32).reshape(-1, 4)  # .astype(np.float16)


points[:, 3] = 3229330
color_cloud = pcl.PointCloud_PointXYZRGB(points)
visual = pcl.pcl_visualization.CloudViewing()
visual.ShowColorCloud(color_cloud, b'cloud')
flag = True
while flag:
    flag != visual.WasStopped()