import mysql.connector
import random
from tkinter import *
root = Tk()



mydb = mysql.connector.connect(host="localhost",user="root",passwd="Yugal@1805", database="has")
mycursor = mydb.cursor(buffered=True)



    #head line

myLabel = Label(root, text="HOSTEL ALLOCATION SYSTEM" ,)
myLabel.pack()

    #Dialogue box

e= Entry(root)
e.pack()
e.get()


#creating the wing members dialog box;

def myClick():

    myLabel1 = Label(root, text="write ID of wing member 2")
    myLabel1.pack()
    a = Entry(root)
    a.pack()                        #member 2
    a.get()
    val1=a.get()


    myLabel2 = Label(root, text="write ID of wing member 3")
    myLabel2.pack()
    b= Entry(root)
    b.pack()                        #member 3
    b.get()
    val2=b.get()

    myLabel3 = Label(root, text="write ID of wing member 4")
    myLabel3.pack()
    c= Entry(root)
    c.pack()                        #member 4
    c.get()
    val3=c.get()

    myLabel4 = Label(root, text="write ID of wing member 5")
    myLabel4.pack()
    d= Entry(root)
    d.pack()                        #member 5
    d.get()
    val4=d.get()

    myLabel5 = Label(root, text="write name of 1st hostel preference")
    myLabel5.pack()
    g= Entry(root)
    g.pack()                        #Hostel preference 1
    g.get()
    val5=g.get()

    mylabel6 = Label(root, text="write name of 2nd hostel  preference")
    mylabel6.pack()
    h= Entry(root)
    h.pack()                        #hostel preference 2
    h.get()
    val6=h.get()

    val = e.get()
    mycursor.execute("select Name from students where Student_ID=%s", (str(val),))
    info = mycursor.fetchall()
    for i in info:
        print("wing representative" + " " + str(i[0]))
    mycursor.execute("insert into wing(wing_representative) values(%s)", (i[0],))           #UPDATING WING REP NAME
    mycursor.execute("select wing_code from wing where wing_representative= %s", (i[0],))           #GETTING WING_CODE
    wingCode = mycursor.fetchall()
    for j in wingCode:
        print("wingCode" + " " + str(j[0]))                             #J[0] IS WING CODE
    mydb.commit()

    mycursor.execute("select Name from students where Student_ID=%s", (str(val1),))
    info1 = mycursor.fetchall()
    for x in info1:
        print("member2" + " " + x[0])                                              #x[0] name of member 2
    mycursor.execute("select Name from students where Student_ID=%s", (str(val2),))
    info2 = mycursor.fetchall()
    for y in info2:
        print("member3" + " " + y[0])
    mycursor.execute("select Name from students where Student_ID=%s", (str(val3),))
    info3 = mycursor.fetchall()
    for z in info3:
        print("member4" + " " + z[0])
    mycursor.execute("select Name from students where Student_ID=%s", (str(val4),))
    info4 = mycursor.fetchall()
    for p in info4:
        print("member5" + " " + p[0])


    mycursor.execute("insert into wing(Hostel_Preference1) values (%s) where wing_code= j[0]", (str(val5),))        #inserting hoselpreference1 wrt wing code
    mydb.commit()
    mycursor.execute("insert into wing(Hostel_Preference2) values (%s) where wing_code= j[0]", (str(val6),))
    mydb.commit()

    mycursor.execute("insert into wing_members(Student_ID_1, Student_ID_2, Student_ID_3, Student_ID_4, Student_ID_5) values(%s, %s, %s, %s, %s)",( i[0], x[0], y[0], z[0], p[0]))
    mydb.commit()                                #inserting wing members name

#LOGIN BUTTON

myLabel7= Label(root, text="write yor Student ID")
myLabel7.pack()
myButton= Button(root, text="Login", command=myClick)
myButton.pack()


root.mainloop()

#allotment in shankar
mycursor.execute("select wing_code from wing where Hostel_Preference1=Shankar")
Shankar= mycursor.fetchall()
random.shuffle(Shankar[:])
#for(i=1, i<5,i++)
       #print(Rooms_allotted are i)
#mycursor.execute(insert into wing_memmbers(Rooms_Allotted) Values(i)






#allotment in ram
mycursor.execute("select wing_code from wing where Hostel_Preference1=Ram")
Ram= mycursor.fetchall()
random.shuffle(Ram[:])
   # for (i=1, i < 5, i++)

       # print(Rooms_allotted are i)

#mycursor.execute(insert into wing_memmbers(Rooms_Allotted) Values(i)



#allotment in vyas
mycursor.execute("select wing_code from wing where Hostel_Preference1=Vyas")
Vyas= mycursor.fetchall()
random.shuffle(Vyas[:])

#    mycursor.execute(insert into wing_memmbers(Rooms_Allotted) Values(i)

print()

#allotment in budh
mycursor.execute("select wing_code from wing where Hostel_Preference1=Budh")
Budh= mycursor.fetchall()
random.shuffle(Budh[:])

#    mycursor.execute(insert into wing_memmbers(Rooms_Allotted) Values(i)



