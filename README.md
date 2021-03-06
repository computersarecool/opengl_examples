# DSA OpenGL Examples
*Examples of DSA OpenGL*

## Description
The evolution of OpenGL basically goes like this:
Immediate mode -> Modern OpenGL (3.0+) -> [Direct State Access](https://www.khronos.org/registry/OpenGL/extensions/EXT/EXT_direct_state_access.txt) -> Vulkan.

Direct State Access in OpenGL provides a nice balance between verbosity and control. In particular, getting rid of the “state-machine” construct makes programming feel more similar to C++.

Early OpenGL does not provide enough control to the user, but Vulkan can make getting started with graphics very intimidating and prototyping / experimenting with the GPU challenging.


The examples contained in this repo examine many OpenGL concepts and almost exclusively use DSA techniques. There remains more that could be covered.

A very small amount of redundant code was abstracted in the `base_app` class. This takes care of loading shaders and setting up a window.

Most of the examples in this project are API examples with limited graphical output, but there is some interesting graphical output.

<p align="center">
  <img src="https://i.imgur.com/PRn5OeT.png?2" title="Raytracer example" />
</p>

### Dependencies
- [GLM](https://github.com/g-truc/glm) (math)
- [GLFW](https://github.com/glfw/glfw) (window creation)
- [GLAD](https://github.com/Dav1dde/gladhttps://github.com/Dav1dde/glad) (OpenGL function loading)
- [STB](https://github.com/nothings/stb) (image loading)

(All of these are included)

## Tested On
- Linux
- Windows

## To Build
This project uses [Git LFS](https://git-lfs.github.com/) for assets and CMAKE to build
- Clone this project using git
- From the root of this project update all the submodules with: `git submodule update --init --recursive`
- From the root of this project type `cmake -G ${GENERATOR} -DCMAKE_BUILD_TYPE=Debug` or open the project in an editor that directly supports CMAKE files

Where `${GENERATOR}` is the platform (i.e. `"Unix Makefiles"`)

## To Use
- Build and run the individual examples

NOTE: Asset paths are relative and expect your current working directory to be a directory below the assets folder.

i.e. the `basic_cube` example should be run from `/bin/basic_cube/Debug`

## Project Structure
- `bin`: This is where the final binary applications are put
- `build`: This holds the generates build files
- `include`: This includes headers from this project and third parties
- `src`: This holds the source code for these examples

There are three classes used in the examples: `Application`, `Camera` and `Glslprogram`.  
These provided basic needed functionality.

## Functionality

#### base_app
This is an abstract base class used in the examples but it has no graphical output

#### basic_cube
This is a rotating cube with model-space positions as colors

#### compute_shader
This renders a cube to an FBO then uses a compute shader to invert that image

#### framebuffers
This renders to a texture using an FBO

#### geometry_shader
This is a pass through geometry shader
  
#### geometry_shader_normal_viewer
This is a cube geometry shader which converts faces to lines to show normals

#### multiple_attributes_and_buffers
This uses mapped buffers to upload data

The buffer backing the VAO is switched to change vertex data quickly

The attribute binding could also be switched to change the vertex data quickly

Interactivity: The spacebar toggles which buffer backs the active VAO 

#### phong_lighting
This is a Phong lighting example

Interactivity: This implements cursor lock to control camera position

Mouse wheel to move forward / black

#### point_sprites
This is a very simple point sprite example

#### raytracer
A raytracer

#### read_pixels
This uses glReadnPixels and mapped Pixel Buffer Objects (to improve performance)

It saves the rendered image as a .tga file

Interactivity: Press spacebar to take a screenshot

#### tesselation
This compares the various tesselation spacing options

Interactivity: The up arrow increases tesselation, down arrow decreases tesselationThis compares the var

#### tesselation_displacement_map
This uses a displacment map to offset vertices and tesselation

This uses an instanced quad with vertices embedded in the shader (there are no vertex attributes)

Interactivity: `w` key toggles showing wireframeThis uses a displacment map to offset vertices and tesselation

#### texture
This loads an image in the S3TC format

It checks to make sure it is compressed and gets the compressed size

#### texture_array
This loads a jpeg image and stores it in the S3TC compressed format

It checks that it is compressed and gets the compressed size

#### transform_feedback
This calculates the square root of some values and reads it back with transform feedback

There is no graphical output

## Extra notes
- To use these examples your graphics card must support at least OpenGL 4.5

### License

:copyright: Willy Nolan 2018

[MIT License](http://en.wikipedia.org/wiki/MIT_License)
