/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * See the NOTICE file distributed with this work for additional
 * information regarding copyright ownership.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "AMSnapshotUtils.h"

@implementation AMSnapshotUtils

+ (NSString *)hashWithSnapshot:(id)snapshot
{
  NSData *token = [[snapshot valueForKey:@"_accessibilityElement"] valueForKey:@"_token"];
  return [token base64EncodedStringWithOptions:0];
}

@end
