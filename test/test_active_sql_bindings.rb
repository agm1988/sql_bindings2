require 'sqlite3'
require 'minitest/autorun'
require 'sql_bindings'

class SqlBindingsTest < Minitest::Test
  def test_execute
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: 'test.db'
    )

    id = 1
    name = 'test'

    SqlBindings.execute('CREATE TABLE IF NOT EXISTS test (id INTEGER, name TEXT)')

    SqlBindings.execute('INSERT INTO test (id, name) VALUES (:id, :name)', id: id, name: name)

    query = SqlBindings.execute('SELECT name FROM test WHERE id = :id', id: id)

    assert_equal(name, query.first[:name])

    File.delete('test.db') if File.exist?('test.db')
  end
end