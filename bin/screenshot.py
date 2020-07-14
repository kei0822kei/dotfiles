import pyautogui
import time
import os
import datetime

#########################
# png to pdf
#########################
# for i in `ls`
# do
# sips -s format pdf $i --out ~/pdf/${i}.pdf
# done


#########################
# settings
#########################

# page num
page = 355
# upper left
x1, y1 = 289, 203
# lower right
x2, y2 = 1146, 1409
# span of shot
span = 1
# folder name header
h_foldername = "output"
# filename
h_filename = "picture"

click1, click2 = 715, 178

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
    pyautogui.click(click1, click2)
    time.sleep(span)
