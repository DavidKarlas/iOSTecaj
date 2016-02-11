using System;

namespace TvShowTodo
{
	public enum TvShowTaskState
	{
		NotWatched,
		Watching,
		Watched
	}

	public class TvShowTask
	{
		public string Name { get; set; }
		public int Season { get; set; }
		public int Episode { get; set; }
		public DateTime Added { get; set; }
		public DateTime Changed { get; set; }
		public int Priority { get; set; }
		public TvShowTaskState State { get; set; }
	}
}

