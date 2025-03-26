# FlaskApp-tmp

## Instructions

Usage:

```sh
bash cmd.sh {start|stop|build|clear}
```

### `build`

If you haven't built the project yet, you can do so by running:

```sh
bash cmd.sh build
```

Once the build process is complete, the project will be accessible at `localhost:8000`.

### `start`

The program will run in debug mode, meaning frontend changes will be rendered upon reload. However, if you make changes to the backend, you will need to restart the program by running:

```sh
bash cmd.sh start
```

### `stop`

Mainly, to stop the program, you can either:

- Use `ctrl + C` to force stop.
- Use bash to stop the program by running:

```sh
bash cmd.sh stop
```

### `clear`

If you need to clear all containers and their orphaned dependencies, you can run:

```sh
bash cmd.sh clear
```

## License

This project is distributed under [GNU General Public License version 3](https://opensource.org/license/gpl-3-0). You can find the complete text of the license in the project repository.
