defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    split_dna = String.split(to_string(dna), "", trim: true)
    to_charlist(Enum.map_join(split_dna, fn x -> transcription[x] end))
  end

  @spec transcription :: String.t()
  def transcription do
    %{ "G" => "C", "C" => "G", "T" => "A", "A" => "U"}
  end
end
