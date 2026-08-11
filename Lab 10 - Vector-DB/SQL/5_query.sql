
declare @x nvarchar(max) = 'texas city'
declare @retval int, @embedding vector(1536)
exec @retval = dbo.get_embedding  @x, @embedding output;

if @retval <> 0 or @embedding is null
begin
    raiserror('get_embedding failed (return code %d); aborting before running the similarity search so a failed embedding call cannot silently return meaningless NULL-ranked results.', 16, 1, @retval);
    return;
end

select @embedding

select top(10)
*,
vector_distance('cosine',@embedding, embedding) as dist
from MovieQuotes
order by dist asc
