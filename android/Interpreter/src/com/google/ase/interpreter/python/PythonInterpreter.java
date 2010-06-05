/*
 * Copyright (C) 2009 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.google.ase.interpreter.python;

import java.io.File;

import com.google.ase.interpreter.Interpreter;
import com.google.ase.interpreter.InterpreterProcess;
import com.google.ase.language.PythonLanguage;

/**
 * Represents the Python interpreter.
 * 
 * @author Damon Kohler (damonkohler@gmail.com)
 */
public class PythonInterpreter extends Interpreter {

  private final static String PYTHON_BIN = "/data/data/com.google.ase/files/python/bin/python";

  public PythonInterpreter() {
    super(new PythonLanguage());
  }

  @Override
  public String getExtension() {
    return ".py";
  }

  @Override
  public String getName() {
    return "python";
  }

  @Override
  public InterpreterProcess buildProcess(String scriptName, int port) {
    return new PythonInterpreterProcess(scriptName, port);
  }

  @Override
  public String getNiceName() {
    return "Python 2.6.2";
  }

  @Override
  public boolean hasInterpreterArchive() {
    return true;
  }

  @Override
  public boolean hasInterpreterExtrasArchive() {
    return true;
  }

  @Override
  public boolean hasScriptsArchive() {
    return true;
  }

  @Override
  public File getBinary() {
    return new File(PYTHON_BIN);
  }

  @Override
  public int getVersion() {
    return 6;
  }
}