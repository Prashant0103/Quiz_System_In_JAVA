package ole;
import java.sql.*;
import java.util.*;

public class DBManager
{
    private Connection conn;
    public DBManager()
    {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost/mcqdb", "root","tudip123");
        }
        catch(Exception er)
        {
            System.out.println("Error:"+er);
        }
    }

    public boolean addUser(UserMaster user)
    {
        try{
            if(this.isUserExists(user.getEmailid()))
                return false;
            String cmd="insert into usermaster(emailid,name,contactno,gender,pwd) values(?,?,?,?,?)";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, user.getEmailid());
            psmt.setString(2, user.getName());
            psmt.setString(3, user.getContactno());
            psmt.setString(4, user.getGender());
            psmt.setString(5, user.getPwd());
            psmt.executeUpdate();
            return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }

    public boolean isUserExists(String emailid)
    {
        try{
            String cmd="select * from usermaster where emailid=?";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, emailid);
            ResultSet rs=psmt.executeQuery();
            if(rs.next())
                return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }

    public boolean isUserValid(String emailid,String pwd)
    {
        try{
            String cmd="select * from usermaster where emailid=? and pwd=?";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, emailid);
            psmt.setString(2, pwd);
            ResultSet rs=psmt.executeQuery();
            if(rs.next())
                return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }

    public UserMaster getUserInfo(String emailid)
    {
        try{
            String cmd="select * from usermaster where emailid=?";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, emailid);
            ResultSet rs=psmt.executeQuery();
            if(rs.next())
                {
                    UserMaster user=new UserMaster();
                    user.setEmailid(rs.getString("emailid"));
                    user.setName(rs.getString("name"));
                    user.setContactno(rs.getString("contactno"));
                    user.setGender(rs.getString("gender"));
                    return user;
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return null;
    }

    public boolean addTest(Test test)
    {
        try{
           
            String cmd="insert into test(testname,subject,qcount,duration) values(?,?,?,?)";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, test.getTestname());
            psmt.setString(2, test.getSubject());
            psmt.setInt(3, test.getQcount());
            psmt.setInt(4, test.getDuration());
            psmt.executeUpdate();
            return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }

    public boolean deleteTest(int testid)
    {
        try{
           
            String cmd="delete from test where testid=?";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setInt(1, testid);
            psmt.executeUpdate();
            return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }


    public boolean addResult(Result res)
    {
        try{
           
            String cmd="insert into result(emailid,score,testid) values(?,?,?)";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setString(1, res.getEmailid());
            psmt.setInt(2, res.getScore());
            psmt.setInt(3, res.getTestid());
            psmt.executeUpdate();
            return true;
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return false;
    }

    public List<Test> getTestList()
    {
        List <Test>lst=new <Test>ArrayList();
        try{
            String cmd="select * from test";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            
            ResultSet rs=psmt.executeQuery();
            while(rs.next())
                {
                    Test test=new Test();
                    test.setTestid(rs.getInt("testid"));
                    test.setTestname(rs.getString("testname"));
                    test.setSubject(rs.getString("subject"));
                    test.setQcount(rs.getInt("qcount"));
                    test.setDuration(rs.getInt("duration"));
                    lst.add(test);
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return lst;
    }

    public Test getTest(int testid)
    {
        
        try{
            String cmd="select * from test where testid="+testid;
            PreparedStatement psmt=conn.prepareStatement(cmd);
            
            ResultSet rs=psmt.executeQuery();
            if(rs.next())
                {
                    Test test=new Test();
                    test.setTestid(rs.getInt("testid"));
                    test.setTestname(rs.getString("testname"));
                    test.setSubject(rs.getString("subject"));
                    test.setQcount(rs.getInt("qcount"));
                    test.setDuration(rs.getInt("duration"));
                    return test;
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return null;
    }


    public List<Result> getResultList(int testid)
    {
        List <Result>lst=new <Result>ArrayList();
        try{
            String cmd="select * from result where testid=? order by score desc";
            PreparedStatement psmt=conn.prepareStatement(cmd);
            psmt.setInt(1,testid);
            ResultSet rs=psmt.executeQuery();
            while(rs.next())
                {
                    
                    Result res=new Result();
                    res.setResultid(rs.getInt("resultid"));
                    res.setTestid(rs.getInt("testid"));
                    res.setEmailid(rs.getString("emailid"));                    
                    res.setScore(rs.getInt("score"));
                    lst.add(res);
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return lst;
    }

    public int getAns(int qid)
    {
        
        try{
            String cmd="select ans from qbank where qid="+qid;
            PreparedStatement psmt=conn.prepareStatement(cmd);
            
            ResultSet rs=psmt.executeQuery();
            if(rs.next())
                {
                    return rs.getInt(1);
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return -1;
    }


    public List<Qbank> getQuestions(String subject,int qcount)
    {
        Vector<Integer> vlst=new <Integer>Vector();
        List <Qbank>lst=new <Qbank>ArrayList();
        try{
            String cmd="select * from qbank where subject=?";
            PreparedStatement psmt=conn.prepareStatement(cmd,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            psmt.setString(1,subject);
            ResultSet rs=psmt.executeQuery();
            rs.last();
            int rowcount=rs.getRow();
            if(rowcount<qcount)
                return lst;
            Random rnd=new Random();
            while(vlst.size()<qcount)
                {
                int pos=rnd.nextInt();
                try{
                pos=Math.abs(pos)%rowcount;
                if(vlst.indexOf(pos)==-1)
                    {
                        vlst.add(pos);
                        rs.absolute(pos);
                        Qbank que=new Qbank();
                        que.setQid(rs.getInt("qid"));
                        que.setQuestion(rs.getString("question"));
                        que.setOption1(rs.getString("option1"));
                        que.setOption2(rs.getString("option2"));
                        que.setOption3(rs.getString("option3"));
                        que.setOption4(rs.getString("option4"));
                        que.setAns(rs.getInt("ans"));
                        lst.add(que);                        
                    }
                }
                catch(Exception er)
                    {
                        System.out.println(".");
                    }
                }
            }
            catch(Exception er)
            {
                System.out.println("Error:"+er);
            }
        return lst;
    }

}