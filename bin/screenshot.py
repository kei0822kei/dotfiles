import pyautogui
import time
import os
import datetime

#########################
# settings
#########################

# page num
page = 383
# upper left
x1, y1 = 250, 43
# lower right
x2, y2 = 1216, 1404
# span of shot
span = 1
# folder name header
h_foldername = "output"
# filename
h_filename = "picture"

click1, click2 = 1595, 19

#########################
# main
#########################

time.sleep(3)

# folder name
folder_name = h_foldername + "_" + str(datetime.datetime.now().strftime("%Y%m%d%H%M%S"))
os.mkdir(folder_name)

for p in range(page):
    out_filename = h_filename + "_" + str(p+1).zfill(4) + '.png'
    s = pyautogui.screenshot(region=(x1, y1, x2-x1, y2-y1))
    s.save(folder_name + '/' + out_filename)
    # pyautogui.keyDown('right')
    print(click1, click2)
    pyautogui.click(click1, click2)
    time.sleep(span)
