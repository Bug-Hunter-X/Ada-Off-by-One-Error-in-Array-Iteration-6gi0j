```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      -- Incorrect access: attempting to access the array using an index
      -- beyond the valid range.
      Put_Line(My_Data(I + 1)); -- This will cause a Constraint_Error
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error occurred");
end Example;
```