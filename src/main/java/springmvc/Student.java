package springmvc;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "student_handle")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private int studentId;
	private Date dob;

	public Student(int id, String name, int studentId, Date dob, String courses, String gender, byte[] file,
			Address address, String type) {
		super();
		this.id = id;
		this.name = name;
		this.studentId = studentId;
		this.dob = dob;
		this.courses = courses;
		this.gender = gender;
		this.file = file;
		this.address = address;
		this.type = type;
	}

	private String courses;
	private String gender;
	@Lob
	private byte[] file;

	@Embedded
	private Address address;
	private String type;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	// In form handler or setter:
	public void setCourses(List<String> coursesList) {
		this.courses = String.join(",", coursesList); // convert list to string
	}

	public String getCourses() {
		return this.courses;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", studentId=" + studentId + ", dob=" + dob + ", courses="
				+ courses + ", gender=" + gender + ", file=" + Arrays.toString(file) + ", address=" + address
				+ ", type=" + type + "]";
	}

	public Address getAddress() {
		return address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public byte[] getFile() {
		return file;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	public void setCourses(String courses) {
		this.courses = courses;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Student() {
	}

}
