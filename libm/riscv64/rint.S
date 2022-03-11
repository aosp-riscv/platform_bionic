/*
 * Copyright (C) 2022 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <private/bionic_asm.h>

ENTRY(rint)
  FCVT.L.D a0, fa0, dyn
  FCVT.D.L ft0, a0, dyn
  FSGNJ.D  fa0, ft0, fa0
  RET
END(rint)

ENTRY(rintf)
  FCVT.W.S a0, fa0, dyn
  FCVT.S.W ft0, a0, dyn
  FSGNJ.S  fa0, ft0, fa0
  RET
END(rintf)

NOTE_GNU_PROPERTY()
