export default function UsersList({ users }) {
  return (
    <div>
      <h3>Connected Users</h3>
      {users.map((u,i)=>(
        <div key={i}>{u}</div>
      ))}
    </div>
  );
}
