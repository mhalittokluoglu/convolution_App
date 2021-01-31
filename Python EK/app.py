#!/usr/bin/python3
import tkinter as tk
from matplotlib.backends.backend_tkagg import (
FigureCanvasTkAgg, NavigationToolbar2Tk)
from matplotlib.figure import Figure
from matplotlib import pyplot

class PlotProgram:
    def __init__(self,master):
        self.x = [-2,-1,0,1,2,3]
        self.y = [3.0,0.0,4.0,0.0,0.0,-2.0]

        self.x2 = [0,1,2]
        self.h = [3.0,2.0,1.0]

        self.x3 = [0]
        self.o = [0.0]

        plot_frame = tk.Frame(master)
        input_frame = tk.Frame(master)
        impulse_frame = tk.Frame(master)
        output_frame = tk.Frame(master)
        frame_quit = tk.Frame(master)

        plot_frame.grid(row = 0, column = 0, rowspan = 3)
        input_frame.grid(row = 0, column = 1)
        impulse_frame.grid(row = 1, column = 1)
        output_frame.grid(row = 2, column = 1)
        frame_quit.grid(row = 0, column = 2, rowspan = 3)

        self.fig = pyplot.figure(figsize=(8,6),dpi = 100)
        self.a1 = self.fig.add_subplot(3,1,1)
        self.a1.stem(self.x,self.y)
        self.a1.set_title('Input')
        self.a1.set_xlabel('n')
        self.a1.set_ylabel('x[n]')

        self.a2 = self.fig.add_subplot(3,1,2)
        self.a2.stem(self.x2,self.h)
        self.a2.set_title('Impulse Response')
        self.a2.set_xlabel('n')
        self.a2.set_ylabel('h[n]')

        self.a3 = self.fig.add_subplot(3,1,3)
        self.a3.stem(self.x3,self.o)
        self.a3.set_title('Ouput Response')
        self.a3.set_xlabel('n')
        self.a3.set_ylabel('Output[n]')

        pyplot.tight_layout()

        canvas = FigureCanvasTkAgg(self.fig, master=plot_frame)
        canvas.draw()
        canvas.get_tk_widget().pack()

        toolbar = NavigationToolbar2Tk(canvas, plot_frame)
        toolbar.update()
        canvas.get_tk_widget().pack()


        self.input_label = tk.Label(input_frame,text = 'Input: ')
        self.input_entry = tk.Entry(input_frame)
        self.clear_button = tk.Button(input_frame,text = 'Clear',command = self.clear_graph)
        self.draw_button = tk.Button(input_frame,text = 'Enter', command = self.get_input)
        self.quit_button = tk.Button(frame_quit,text = 'Quit',bg='red',command = lambda:self.quit_func(master))

        self.input_entry.bind('<Return>',self.get_input)
        self.input_label.grid(row = 0, column = 0)
        self.input_entry.grid(row = 0, column = 1)
        self.clear_button.grid(row = 1, column = 0)
        self.draw_button.grid(row = 1, column = 1,sticky = 'E')
        self.quit_button.grid(row = 0, column = 0,sticky = 'N')


        self.impulse_label = tk.Label(impulse_frame,text = 'Impulse Response: ')
        self.impulse_entry = tk.Entry(impulse_frame)
        self.clear2_button = tk.Button(impulse_frame,text = 'Clear',command = self.clear_i_graph)
        self.draw2_button = tk.Button(impulse_frame,text = 'Enter', command = self.get_impulse)

        self.impulse_entry.bind('<Return>',self.get_impulse)
        self.impulse_label.grid(row = 0, column = 0)
        self.impulse_entry.grid(row = 0, column = 1)
        self.clear2_button.grid(row = 1, column = 0)
        self.draw2_button.grid(row = 1, column = 1,sticky = 'E')


        self.output_label = tk.Label(output_frame,text = 'Output: ')
        self.clear3_button = tk.Button(output_frame,text = 'Clear',command = self.clear_o_graph)
        self.calculate_button = tk.Button(output_frame,text = 'Calculate',command = self.calculate_func)

        self.output_label.grid(row = 0, column = 0)
        self.clear3_button.grid(row = 1, column = 0)
        self.calculate_button.grid(row = 1, column = 1,sticky = 'E')

    def get_input(self,*args):
        self.y = []
        self.x = []
        y_str = self.input_entry.get().split(',')
        i = 0
        for item in y_str:
            self.y.append(float(y_str[i]))
            i += 1
        i = 0

        for item in self.y:
            self.x.append(i)
            i += 1

        self.a1.clear()
        self.a1.stem(self.x,self.y)
        self.a1.set_title('Input')
        self.a1.set_xlabel('n')
        self.a1.set_ylabel('x[n]')
        self.fig.canvas.draw()

    def get_impulse(self,*args):
        self.h = []
        self.x2 = []
        h_str = self.impulse_entry.get().split(',')
        i = 0
        for item in h_str:
            self.h.append(float(h_str[i]))
            i += 1
        i = 0

        for item in self.h:
            self.x2.append(i)
            i += 1

        self.a2.clear()
        self.a2.stem(self.x2,self.h)
        self.a2.set_title('Impulse Response')
        self.a2.set_xlabel('n')
        self.a2.set_ylabel('h[n]')
        self.fig.canvas.draw()


    def clear_graph(self):
        self.a1.clear()
        self.y = []
        self.x = []
        self.a1.set_title('Input')
        self.a1.set_xlabel('n')
        self.a1.set_ylabel('x[n]')
        self.fig.canvas.draw()

    def clear_i_graph(self):
        self.a2.clear()
        self.x2 = []
        self.h = []
        self.a2.set_title('Impulse Response')
        self.a2.set_xlabel('n')
        self.a2.set_ylabel('h[n]')
        self.fig.canvas.draw()

    def clear_o_graph(self):
        self.a3.clear()
        self.x3 = []
        self.o = []
        self.a3.set_title('Output Response')
        self.a3.set_xlabel('n')
        self.a3.set_ylabel('Output[n]')
        self.fig.canvas.draw()

    def calculate_func(self):
        j = 0
        new_o = []
        new_x3 = []
        for item in self.x:
            new_h = []
            new_x2 = []
            i = 0
            for item in self.h:
                new_h.append(self.h[i])
                new_x2.append(self.x2[i])
                i+=1

            i = 0
            for item in self.x2:
                new_x2[i] += self.x[j]
                i+=1

            i = 0
            for item in new_h:
                new_h[i] *= self.y[j]
                i+=1

            if len(new_o) == 0:
                i = 0
                for item in new_h:
                    new_o.append(new_h[i])
                    new_x3.append(new_x2[i])
                    i+=1
            else:
                k = 0
                for item in new_x2:
                    i = 0
                    for count in range(new_x3[0],new_x3[-1]+1):
                        if count == item:
                            new_o[i] += new_h[k]
                            break
                        i+=1
                    k+=1

                new_x3.append(new_x2[-1])
                new_o.append(new_h[-1])

            j+=1
        print("")
        print(new_x3)
        print(new_o)
        print("")

        self.x3 = []
        self.o = []
        i = 0
        for item in new_x3:
            self.x3.append(new_x3[i])
            self.o.append(new_o[i])
            i += 1



        self.a3.clear()
        self.a3.stem(self.x3,self.o)
        self.a3.set_title('Output Response')
        self.a3.set_xlabel('n')
        self.a3.set_ylabel('Output[n]')
        self.a3.grid()
        self.fig.canvas.draw()

    def quit_func(self,master):
        master.destroy()
        master.quit()



win = tk.Tk()
win.geometry("1280x720+10+10")
# win.configure(bg='#1111DD')
win.title('Graph Program')
prog = PlotProgram(win)
win.mainloop()
