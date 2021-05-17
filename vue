/* eslint-disable prettier/prettier */
export const strict = false

export const state = () => ({
    mssv: '',
    password: '',
    role: '',
    isAdmin: false,
    isLogin: false,
    isTeacher: false,
    isStudent: false,
    roles: [],
    rolesTrainingAccept: ['role_teacher_training', 'role_admin', 'role_student'],
    rolesInsuranceAccept: ['role_teacher_insurance', 'role_admin', 'role_student'],
    rolesRetributionAccept: ['role_teacher_retribution', 'role_admin'],
    permission: false,
    permissionInsurance: false,
    permissionRetribution: false,
    messPermission: '',
    permissionTraining: false,
    vSnackbar: false,
})
export const getters = {
    getmssv(state) {
        return state.mssv
    },
    getPassword(state) {
        return state.password
    },
    getRole(state) {
        return state.role
    },
    getIsLogin(state) {
        return state.isLogin
    },
    isAuthenticated(state) { // Kiểm tra user đã login thành công hay chưa
        return state.auth.loggedIn
    },
    loggedInUser(state) { // lấy thông tin người dùng
        return state.auth.user
    },
    getRoles(state) {
        return state.roles
    },
    getRolesTrainingAccept(state) {
        return state.rolesTrainingAccept
    },
    getRolesInsuranceAccept(state) {
        return state.rolesInsuranceAccept
    },
    getRolesRetributionAccept(state) {
        return state.rolesRetributionAccept
    },
    getPermission(state) {
        return state.permission
    },
    getMessPermission(state) {
        return state.messPermission
    },
    getPermissionTraining(state) {
        return state.permissionTraining
    },
    getVSnackbar(state) {
        return state.vSnackbar
    },
    getIsAdmin(state) {
        return state.isAdmin
    },
    getIsTeacher(state) {
        return state.isTeacher
    },
    getPermissionInsurance(state) {
        return state.permissionInsurance
    },
    getPermissionRetribution(state) {
        return state.permissionRetribution
    },
    getIsStudent(state) {
        return state.isStudent
    }
}
export const mutations = {
    setmssv(state, mssv) {
        state.mssv = mssv
    },
    setPassword(state, password) {
        state.password = password
    },
    setRole(state, role) {
        state.role = role
    },
    setIsLogin(state, isLogin) {
        state.isLogin = isLogin
    },
    rolesUser(state) { // push role to Roles
        state.auth.user.roles.forEach(role => {
            state.roles.push(role.nameRole)
        })
    },
    refreshRoles(state) {
        state.roles = [] // fresh roles
    },
    setPermission(state, data) {
        state.permission = data
    },
    setMessPermission(state, mess) {
        state.messPermission = mess
    },
    setPermissionTraining(state, data) {
        state.permissionTraining = data
    },
    setVSnackbar(state, data) {
        state.vSnackbar = data
    },
    setIsAdmin(state, data) {
        state.isAdmin = data
    },
    setIsTeacher(state, data) {
        state.isTeacher = data
    },
    setPermissionInsurance(state, data) {
        state.permissionInsurance = data
    },
    setPermissionRetribution(state, data) {
        state.permissionRetribution = data
    },
    setIsStudent(state, data) {
        state.isStudent = data
    }
}
export const actions = {
    roleUserTraining({ commit, getters }) {
        commit('setIsStudent', false)
        const rolesTrainingAccept = getters.getRolesTrainingAccept // Những role mà training chấp thuận
        const listRoleUser = getters.getRoles // Tất cả các role mà user có
        const found = listRoleUser.some(r => rolesTrainingAccept.includes(r))
        const teacher = listRoleUser.find((el) => {
            return el === 'role_teacher_training' || el === 'role_teacher_insurance' || el === 'role_teacher_retribution'
        })
        const student = listRoleUser.find((el) => {
            return el === 'role_student'
        })
        if (teacher) {
            commit('setIsTeacher', true)
        }
        if (student) {
            commit('setIsStudent', true)
        }
        commit('setPermission', found)

        return found
    },
    roleUserInsurance({ commit, getters }) {
        commit('setIsStudent', false)
        const rolesInsuranceAccept = getters.getRolesInsuranceAccept // Những role mà insurance chấp thuận
        const listRoleUser = getters.getRoles // Tất cả các role mà user có
        const found = listRoleUser.some(r => rolesInsuranceAccept.includes(r))
        const teacher = listRoleUser.find((el) => {
            return el === 'role_teacher_training' || el === 'role_teacher_insurance' || el === 'role_teacher_retribution'
        })
        const student = listRoleUser.find((el) => {
            return el === 'role_student'
        })
        if (teacher) {
            commit('setIsTeacher', true)
        }
        if (student) {
            commit('setIsStudent', true)
        }
        commit('setPermissionInsurance', found)

        return found
    },
    roleUserRetribution({ commit, getters }) {
        const rolesRetributionAccept = getters.getRolesRetributionAccept // Những role mà retribution chấp thuận
        const listRoleUser = getters.getRoles // Tất cả các role mà user có
        const found = listRoleUser.some(r => rolesRetributionAccept.includes(r))
        const teacher = listRoleUser.find((el) => {
            return el === 'role_teacher_training' || el === 'role_teacher_insurance' || el === 'role_teacher_retribution'
        })
        const student = listRoleUser.find((el) => {
            return el === 'role_student'
        })
        if (teacher) {
            commit('setIsTeacher', true)
        }
        if (student) {
            commit('setIsStudent', true)
        }
        commit('setPermissionRetribution', found)

        return found
    },
}
