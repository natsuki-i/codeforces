#include <iostream>
#include <vector>
#include <list>

using namespace std;

int search(vector<vector<bool>> l, vector<int> m, bool f)
{
  const int n = m.size();
  std::list<int> stack;
  stack.push_back(0);
  m[0] = 0;
  while(!stack.empty()) {
    int c = stack.front();
    stack.pop_front();
    for(int i = 0;i < n;++i){
      if (l[c][i] == f) {
        if(m[i] > m[c] + 1){
          m[i] = m[c] + 1;
          stack.push_back(i);
        }
      }
    }
  }
  return m[n-1];
}

int main(int argc, char* argv[])
{
  int n, m;
  cin >> n >> m;
  vector<vector<bool>> l(n, vector<bool>(n, false));
  vector<int> b(n, n + 1);
  vector<int> t(n, n + 1);
  for (int i = 0;i < m;++i) {
    int x, y;
    cin >> x >> y;
    x--;y--;
    l[x][y] = l[y][x] = true;
  }
  int x, y;
  x = search(l, b, true);
  y = search(l, t, false);
  if (x == n+1 || y == n+1) {
    cout << -1 << endl;
  } else if (x < y) {
    cout << y << endl;
  } else {
    cout << x << endl;
  }
  return 0;
}
