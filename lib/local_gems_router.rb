class LocalGemsRouter < YARD::Server::Router
  def docs_prefix; 'local_gems' end
  def list_prefix; 'list/local_gems' end
  def search_prefix; 'search/local_gems' end
end
