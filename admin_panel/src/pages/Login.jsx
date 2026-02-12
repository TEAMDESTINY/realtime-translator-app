import { useState } from "react";

export default function Login({ onLogin }) {
  const [user, setUser] = useState("");
  const [pass, setPass] = useState("");

  const login = () => {
    if (user === "admin" && pass === "admin123") {
      onLogin();
    } else {
      alert("Wrong credentials");
    }
  };

  return (
    <div style={{padding:40}}>
      <h2>Admin Login</h2>
      <input placeholder="Username" onChange={e=>setUser(e.target.value)} />
      <br/><br/>
      <input type="password" placeholder="Password" onChange={e=>setPass(e.target.value)} />
      <br/><br/>
      <button onClick={login}>Login</button>
    </div>
  );
}
