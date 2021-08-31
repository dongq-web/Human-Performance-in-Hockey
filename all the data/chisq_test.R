#entering the numbers that I got from confusion matrix
#can check how I did that by looking at the confusion matrix code
#chisq test for 6 period
#q means quinnipiac, c means colgate, d means dartmouth, h means harvard
m_q1 = matrix(c(12, 2, 4, 23), 2, 2, byrow = T)
chisq.test(m_q1)

m_q2 = matrix(c(18, 1, 4, 17), 2, 2, byrow = T)
chisq.test(m_q2)

m_q3 = matrix(c(7, 0, 8, 35), 2, 2, byrow = T)
chisq.test(m_q3)

m_c1 = matrix(c(16, 1, 4, 11), 2, 2, byrow = T)
chisq.test(m_c1)

m_d1 = matrix(c(11, 2, 2, 13), 2, 2, byrow = T)
chisq.test(m_d1)

m_h1 = matrix(c(12, 4, 8, 16), 2, 2, byrow = T)
chisq.test(m_h1)
