public class Main {
    public static void main(String[] args) {
//        User user = User.builder()
//                .id(4)
//                .name("banh` gay")
//                .email("banhgay2000@yahoo.com")
//                .country("Cambodia")
//                .build();

        UserDAO userDAO = new UserDAO();
        try {
            userDAO.orderByAllUsers();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
