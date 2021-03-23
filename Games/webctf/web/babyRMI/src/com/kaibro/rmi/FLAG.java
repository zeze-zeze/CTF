package com.kaibro.rmi;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class FLAG implements RMIInterface {

    public String getSecret() throws RemoteException {
        return "FLAG{XXXXXXX}";
    }

    public String sayHello() throws RemoteException {
        return "Hello, This is FLAG object :)";
    }
}
