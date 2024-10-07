# header-only library

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO olokreaz/commander
	REF 4c6c44bd51e5b5d702364b2d5bd49a381a59ddfc
	SHA512 51d06acda97f63f91ec99f871214c4a49a6dbc1b0e8e6e867b826e67a53c00fc54cfe31bab4c4f691562c54dddb3be0a18a8633882aa5ee37d7e114cc5f411e6
	HEAD_REF main
	)

file(COPY ${SOURCE_PATH}/include/ DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# Handle copyright
configure_file(${SOURCE_PATH}/LICENSE ${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright COPYONLY)