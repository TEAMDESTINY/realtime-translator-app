export default function LanguageSelect({ setLang }) {
  const langs = ["en","hi","es","fr","de","ja","ru","ar"];

  return (
    <select onChange={(e)=>setLang(e.target.value)}>
      {langs.map(l => (
        <option key={l} value={l}>{l}</option>
      ))}
    </select>
  );
}
