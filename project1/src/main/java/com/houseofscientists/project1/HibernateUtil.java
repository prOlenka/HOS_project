package com.houseofscientists.project1;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            // Создать SessionFactory из hibernate.cfg.xml
            return new Configuration().configure().buildSessionFactory(
                    new StandardServiceRegistryBuilder().build() );
        } catch (Throwable ex) {
            // Убедиться что исключения логируются, поскольку они могут быть потеряны
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
