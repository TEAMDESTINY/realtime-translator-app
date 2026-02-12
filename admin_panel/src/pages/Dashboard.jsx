import { useState } from "react";
import LanguageSelect from "../components/LanguageSelect";
import UsersList from "../components/UsersList";

export default function Dashboard() {
  const [lang, setLang] = useState("en");
  const [code, setCode] = useState("");
  const [users] = useState(["User1","User2"]);

  const generateCode = () => {
    const c = Math.floor(100000 + Math.random() * 900000);
    setCode(c);
  };

  return (
    <div style={{padding:40}}>
      <h1>Admin Dashboard</h1>

      <h3>Select Admin Language</h3>
      <LanguageSelect setLang={setLang} />

      <br/><br/>

      <button onClick={generateCode}>Generate Connection Code</button>

      <h2>Session Code: {code}</h2>

      <UsersList users={users} />
    </div>
  );
}
