package com.houseofscientists.project1.dao;

import com.houseofscientists.project1.models.Questions;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

    @Component
    public class QuestionsDAO {

        private final SessionFactory sessionFactory;

        @Autowired
        public QuestionsDAO(SessionFactory sessionFactory) {
            this.sessionFactory = sessionFactory;
        }

        @Transactional(readOnly = true)
        public List<Questions> index() {
            Session session = sessionFactory.getCurrentSession();

            List<Questions> questions = session.createQuery("select p from Questions p", Questions.class)
                    .getResultList();

            return questions;
        }

        public Questions show(int id) {
            return null;
        }
        public Questions get(int id) {
            return null;
        }

//        public void save(Questions questions) {
//
//        }
//
//        public void update(int id, Questions updatedQuestion) {
//
//        }
//
//        public void delete(int id) {
//
//        }
    }
