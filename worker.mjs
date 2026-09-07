export default {
  async fetch(request, env) {
    if (!env.ASSETS) {
      return new Response("Site assets are unavailable.", { status: 500 });
    }

    return env.ASSETS.fetch(request);
  },
};
