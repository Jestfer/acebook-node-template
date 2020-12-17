module.exports = {
    apps: [
      {
        name: 'acebook-node',
        script: 'npm',
        args: 'start',
        // script: 'npx',
        // args: 'serve -s build -l 3000 -n',
        interpreter: 'none',
        env: {
          NODE_ENV: 'development',
        },
      },
    ],
  }