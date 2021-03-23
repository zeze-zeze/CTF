package com.kaibro.rmi;
import org.apache.commons.collections.*;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class Server implements RMIInterface {
    public static Registry registry;
    public static void main(String[] args) {
        try {
            String host = "54.238.163.34";
            System.setProperty("java.rmi.server.hostname", host);
            Server obj = new Server();
            RMIInterface stub = (RMIInterface) UnicastRemoteObject.exportObject(obj, 56666);
            registry = LocateRegistry.createRegistry(11099);
            registry.bind("Hello", stub);
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
        return "no secret here...QQ";
    }
}
