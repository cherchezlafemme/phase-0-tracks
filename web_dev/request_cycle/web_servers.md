## Key design philosophies of the Linux operating system? ##

####Open to everyone:####
At the core of Linux philosophy is a concept of an **Open Source Software**. It means that this program is freely available to anyone to download, work with, modify, distribute and etc. In other words you don't need to buy a license or pay a fee for using Linux. 

Since anyone can use it and modify, in the center of philosophy is the desire to create a better software by everyone willing to do so (not by one big corporation). Linux is not created by a big corporation, sold to the users and then is maintained by the corporation and the only updates the user get are made by the corporation. It is exactly the opposite.

####Encourages changes and mistakes:####
Linux is created by the volunteers and is evolving all the time. It doesn't have a permanent status. You can modify things in it and break it. The program doesn't stop you from doing mistakes. It encourages you to experiment and try new things. It assumes that you know what you are doing, even if this is not true.
 
####Treats you like a boss:####
Linux is open to anyone for download and modifications. So it means that it treats everyone equally. It thinks that the user is competent by default and allows you to do anything. It gives all the power into the user's hands. Linux will do what you say you want to do and it won't stop you from mistakes, but will give you a freedom to try, discover and create new things.

## Virtual Private Server. Advantages of using a VPS. ##
**VPS** is a private (you own it, it is assigned to you) server that exists virtually (within another computer). Its own operating system in which sites are hosted on single machine. It is a dedicated server that runs in a shared hosting environment. Sites hosted in VPS servers have separate IP address, CPU resources, memory space, hard disk space and they are totally independent.

**Advantages:**

- Affordability: they are not as expensive as having a real server or a dedicated hosting.
- Performance: they are good for the sites with high volume traffic. Can handle a lot of requests if the VPS has a good memory.
- Control: they give the owner of the VPS full control of it. You can do modifications by logging in remotely into the VPS from your machine from anywhere, anytime.
- Security and privacy: since it is it's own machine, it has it's own operation system that you as a main user control (it is private to you). As a separate server with it's own resources it makes it difficult for other servers to invade the security. 
- Flexibility: you can always update your VPS and change it due to your needs.
- Good to nature: it is a green technology with minimal carbon footprint since it is virtual (compared to real dedicated server room).


##Why is it considered a bad idea to run programs as the root user on a Linux system?##

For security issues. Root user is great for administrative work, however it has all the power over the operation system. So in order not to ruin everything at once it is considered a good practice to log in as a user. This way you still can do almost everything (except from some heavy administrative tasks) and sometimes even more since some programs will not run on a root user by default in order to avoid undoable changes. 

It is also good to be logged in as separate users when couple developers work on the same Linux machine. This way you are all equal and you still have the main root untouched, that you can use in order to make changes for all the other users.

If you mistyped something, made a fatal mistake, or removed something valuable on  the root - there is no way back. The same thing with introducing bugs to the root. That may damage OS completely. Root is a powerful user, and at the same time a dangerous one.

I really like this quote that I stumbled on while reading on this topic. I think it sums up why is it is a bad idea to run programs as the root user:
> **Linux is about freedom, including freedom to destroy your own data, privacy and security.**



