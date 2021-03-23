package com.kaibro.rmi;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class Server implements RMIInterface {
    public static void main(String[] args) {
        try {
            String host = "54.238.163.34";
            System.setProperty("java.rmi.server.hostname", host);
            Server obj = new Server();
            FLAG obj2 = new FLAG();
            RMIInterface stub = (RMIInterface) UnicastRemoteObject.exportObject(obj, 56666);
            RMIInterface stub2 = (RMIInterface) UnicastRemoteObject.exportObject(obj2, 56667);
            Registry registry = LocateRegistry.createRegistry(11099);
            registry.bind("Hello", stub);
            registry.bind("FLAG", stub2);
            System.err.println("Server ready");

        } catch (Exception e) {
            System.out.println("Server Exception: " + e.toString());
            e.printStackTrace();
        }
    }

    public String sayHello() throws RemoteException {
        return "Hello, RMI!";
    }

    public String getSecret() throws RemoteException {
        return "Hint: FLAG is not in this object! Try to find another object :)";
    }
}