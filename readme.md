step 1:
   separate classes out to source files and leave the first file to handle importing and newing up those objects.. so a runner file and a couple separt files for classes

Challenge: 
    Context: We are making a simple Car Inventory System for a small used car dealer. Our first request is to add a simple way to add new inventory into the system as it comes in.

    Objective: Obviously things are getting cluttered and kind of complex. Lets separate out the classes to files and find homes for every piece of code... then we can write some tests to verify they work as expected so we don't break things as we get bigger

    tips:
        lets consider a carlot or inventory class that will have an attribute of a cars array
