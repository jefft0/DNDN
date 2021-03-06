﻿/*
 * Copyright (C) 2015-2017 Regents of the University of California.
 * @author: Jeff Thompson <jefft0@remap.ucla.edu>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * A copy of the GNU Lesser General Public License is in the file COPYING.
 */

module net.named_data.dndn.encoding.wire_format;

import net.named_data.dndn.name;

class WireFormat
{
  /**
   * Decode input as a name and set the fields of the Name object.
   * Your derived class should override.
   * Params:
   * name = The Name object whose fields are updated.
   * input = The ubyte array with the bytes to decode. This takes an
   * immutable array so that slices of the input can be supplied as
   * immutable results.
   * Throws: EncodingException for invalid encoding.
   */
  void
  decodeName(Name name, immutable(ubyte)[] input) const
  {
    throw new Exception("decodeName is not implemented");
  }

  /**
   * Set the static default WireFormat used by default encoding and decoding
   * methods.
   * Params:
   * wireFormat = An object of a subclass of WireFormat.  This does not
   * make a copy.
   */
  static void
  setDefaultWireFormat(WireFormat wireFormat)
  {
    defaultWireFormat_ = wireFormat;
  }
  
  /**
   * Return the default WireFormat used by default encoding and decoding methods
   * which was set with setDefaultWireFormat.
   * Returns: The WireFormat object.
   */
  static WireFormat
  getDefaultWireFormat() { return defaultWireFormat_; }

  private static WireFormat defaultWireFormat_;
}
