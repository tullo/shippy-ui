import FormControl from "react-bootstrap/FormControl";
import FormGroup from "react-bootstrap/FormGroup";
import FormLabel from "react-bootstrap/FormLabel";

function Password(props) {
  return (
    <FormGroup>
      <FormLabel htmlFor="password">Password</FormLabel>
      <FormControl id="password" type="password" value={props.password}
        onChange={props.onChange}
      />
    </FormGroup>
  );
}

export default Password;
