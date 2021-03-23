package com.kaibro.rmi;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Client {

    public static void main(String[] args) {

        String host = "54.238.163.34";
        int port = 11100;
        try {
            Registry registry = LocateRegistry.getRegistry(host, port);
            RMIInterface stub = (RMIInterface) registry.lookup("Hello");
            String response = stub.sayHello();
            System.out.println("response: " + response);
        } catch (Exception e) {
            System.err.println("Client exception: " + e.toString());
            e.printStackTrace();
        }
    }
}
